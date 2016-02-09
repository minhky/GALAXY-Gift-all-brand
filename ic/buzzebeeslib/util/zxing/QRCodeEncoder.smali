.class public Lic/buzzebeeslib/util/zxing/QRCodeEncoder;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final TAG:Ljava/lang/String;

.field private static final WHITE:I = -0x1


# instance fields
.field private final activity:Landroid/app/Activity;

.field private contents:Ljava/lang/String;

.field private final dimension:I

.field private displayContents:Ljava/lang/String;

.field private format:Lcom/google/zxing/BarcodeFormat;

.field private title:Ljava/lang/String;

.field private final useVCard:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "dimension"    # I
    .param p4, "useVCard"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    .line 57
    iput p3, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->dimension:I

    .line 58
    iput-boolean p4, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->useVCard:Z

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 61
    invoke-direct {p0, p2}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->encodeContentsFromZXingIntent(Landroid/content/Intent;)Z

    .line 65
    :cond_18
    :goto_18
    return-void

    .line 62
    :cond_19
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 63
    invoke-direct {p0, p2}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->encodeContentsFromShareIntent(Landroid/content/Intent;)V

    goto :goto_18
.end method

.method private encodeContentsFromShareIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 122
    invoke-direct {p0, p1}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->encodeFromStreamExtra(Landroid/content/Intent;)V

    .line 126
    :goto_b
    return-void

    .line 124
    :cond_c
    invoke-direct {p0, p1}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->encodeFromTextExtras(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method private encodeContentsFromZXingIntent(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 87
    const-string v5, "ENCODE_FORMAT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "formatString":Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 89
    if-eqz v2, :cond_12

    .line 91
    :try_start_c
    invoke-static {v2}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    iput-object v5, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_12} :catch_77

    .line 96
    :cond_12
    :goto_12
    iget-object v5, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, v6, :cond_40

    .line 97
    :cond_1c
    const-string v5, "ENCODE_TYPE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2b

    .line 115
    .end local v3    # "type":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return v4

    .line 101
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2b
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v5, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 102
    invoke-direct {p0, p1, v3}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V

    .line 115
    .end local v3    # "type":Ljava/lang/String;
    :cond_32
    :goto_32
    iget-object v5, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2a

    const/4 v4, 0x1

    goto :goto_2a

    .line 104
    :cond_40
    const-string v5, "ENCODE_DATA"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_32

    .line 106
    iput-object v0, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 109
    :try_start_52
    iget-object v5, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v6, Lic/buzzebeeslib/R$string;->contents_text:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5c} :catch_5d

    goto :goto_32

    .line 110
    :catch_5d
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "encodeContentsFromZXingIntent|Exception := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 92
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_77
    move-exception v5

    goto :goto_12
.end method

.method private encodeFromStreamExtra(Landroid/content/Intent;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 171
    sget-object v11, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v11, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 173
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_12

    .line 174
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string v12, "No extras"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 176
    :cond_12
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 177
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_24

    .line 178
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string v12, "No EXTRA_STREAM"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 183
    :cond_24
    :try_start_24
    iget-object v11, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 184
    .local v7, "stream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v1, v11, [B

    .line 187
    .local v1, "buffer":[B
    :goto_37
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    if-gtz v3, :cond_6e

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 191
    .local v9, "vcard":[B
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v9

    const-string v13, "UTF-8"

    invoke-direct {v10, v9, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_4a} :catch_73

    .line 195
    .local v10, "vcardString":Ljava/lang/String;
    sget-object v11, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    const-string v12, "Encoding share intent content:"

    invoke-static {v11, v12}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v11, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    invoke-static {v11, v10}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v6, Lcom/google/zxing/Result;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v10, v9, v11, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 198
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-static {v6}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v5

    .line 199
    .local v5, "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    instance-of v11, v5, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v11, :cond_7a

    .line 200
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string v12, "Result was not an address"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 188
    .end local v5    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    .end local v6    # "result":Lcom/google/zxing/Result;
    .end local v9    # "vcard":[B
    .end local v10    # "vcardString":Ljava/lang/String;
    :cond_6e
    const/4 v11, 0x0

    :try_start_6f
    invoke-virtual {v0, v1, v11, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_37

    .line 192
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v7    # "stream":Ljava/io/InputStream;
    :catch_73
    move-exception v4

    .line 193
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v11, Lcom/google/zxing/WriterException;

    invoke-direct {v11, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 202
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v5    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    .restart local v6    # "result":Lcom/google/zxing/Result;
    .restart local v7    # "stream":Ljava/io/InputStream;
    .restart local v9    # "vcard":[B
    .restart local v10    # "vcardString":Ljava/lang/String;
    :cond_7a
    check-cast v5, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .end local v5    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    invoke-direct {p0, v5}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V

    .line 203
    iget-object v11, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v11, :cond_8b

    iget-object v11, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_93

    .line 204
    :cond_8b
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string v12, "No content to encode"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 206
    :cond_93
    return-void
.end method

.method private encodeFromTextExtras(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "theContents":Ljava/lang/String;
    if-nez v2, :cond_33

    .line 132
    const-string v3, "android.intent.extra.HTML_TEXT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    if-nez v2, :cond_33

    .line 135
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    if-nez v2, :cond_33

    .line 137
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "emails":[Ljava/lang/String;
    if-eqz v1, :cond_43

    .line 139
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Lic/buzzebeeslib/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .end local v1    # "emails":[Ljava/lang/String;
    :cond_33
    :goto_33
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_46

    .line 149
    :cond_3b
    new-instance v3, Lcom/google/zxing/WriterException;

    const-string v4, "Empty EXTRA_TEXT"

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    .restart local v1    # "emails":[Ljava/lang/String;
    :cond_43
    const-string v2, "?"

    goto :goto_33

    .line 151
    .end local v1    # "emails":[Ljava/lang/String;
    :cond_46
    iput-object v2, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 153
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v3, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 154
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 155
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 163
    :goto_5c
    :try_start_5c
    iget-object v3, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lic/buzzebeeslib/R$string;->contents_text:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_66} :catch_7d

    .line 167
    :goto_66
    return-void

    .line 156
    :cond_67
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 157
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_5c

    .line 159
    :cond_78
    iget-object v3, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    iput-object v3, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_5c

    .line 164
    :catch_7d
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "encodeFromTextExtras|Exception := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66
.end method

.method private encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v2, "TEXT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 210
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 211
    .local v11, "data":Ljava/lang/String;
    if-eqz v11, :cond_30

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30

    .line 212
    move-object/from16 v0, p0

    iput-object v11, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iput-object v11, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 216
    :try_start_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lic/buzzebeeslib/R$string;->contents_text:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_31

    .line 316
    .end local v11    # "data":Ljava/lang/String;
    :cond_30
    :goto_30
    return-void

    .line 217
    .restart local v11    # "data":Ljava/lang/String;
    :catch_31
    move-exception v12

    .line 218
    .local v12, "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 222
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_4f
    const-string v2, "EMAIL_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 223
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 224
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_30

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mailto:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 226
    move-object/from16 v0, p0

    iput-object v11, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 229
    :try_start_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lic/buzzebeeslib/R$string;->contents_email:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8c} :catch_8d

    goto :goto_30

    .line 230
    :catch_8d
    move-exception v12

    .line 231
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 235
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_ab
    const-string v2, "PHONE_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 236
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 237
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_30

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 239
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 242
    :try_start_de
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lic/buzzebeeslib/R$string;->contents_phone:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ec} :catch_ee

    goto/16 :goto_30

    .line 243
    :catch_ee
    move-exception v12

    .line 244
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 248
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_10d
    const-string v2, "SMS_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 249
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/zxing/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 250
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_30

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sms:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 252
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 255
    :try_start_140
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lic/buzzebeeslib/R$string;->contents_sms:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_14e} :catch_150

    goto/16 :goto_30

    .line 256
    :catch_150
    move-exception v12

    .line 257
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 260
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_16f
    const-string v2, "CONTACT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24d

    .line 262
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 263
    .local v10, "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_30

    .line 265
    const-string v2, "name"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 266
    .local v16, "name":Ljava/lang/String;
    const-string v2, "company"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "organization":Ljava/lang/String;
    const-string v2, "postal"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "address":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    sget-object v2, Lic/buzzebeeslib/util/zxing/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    .local v5, "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_19f
    sget-object v2, Lic/buzzebeeslib/util/zxing/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_223

    .line 272
    new-instance v6, Ljava/util/ArrayList;

    sget-object v2, Lic/buzzebeeslib/util/zxing/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v6, "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v18, 0x0

    :goto_1b0
    sget-object v2, Lic/buzzebeeslib/util/zxing/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_232

    .line 276
    const-string v2, "URL_KEY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 277
    .local v17, "url":Ljava/lang/String;
    if-nez v17, :cond_241

    const/4 v7, 0x0

    .line 278
    .local v7, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_1c0
    const-string v2, "NOTE_KEY"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 280
    .local v8, "note":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->useVCard:Z

    if-eqz v2, :cond_247

    new-instance v1, Lic/buzzebeeslib/util/zxing/VCardContactEncoder;

    invoke-direct {v1}, Lic/buzzebeeslib/util/zxing/VCardContactEncoder;-><init>()V

    .line 281
    .local v1, "mecardEncoder":Lic/buzzebeeslib/util/zxing/ContactEncoder;
    :goto_1d1
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual/range {v1 .. v8}, Lic/buzzebeeslib/util/zxing/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 283
    .local v13, "encoded":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30

    .line 284
    const/4 v2, 0x0

    aget-object v2, v13, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 285
    const/4 v2, 0x1

    aget-object v2, v13, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 288
    :try_start_1f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lic/buzzebeeslib/R$string;->contents_contact:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_202} :catch_204

    goto/16 :goto_30

    .line 289
    :catch_204
    move-exception v12

    .line 290
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 270
    .end local v1    # "mecardEncoder":Lic/buzzebeeslib/util/zxing/ContactEncoder;
    .end local v6    # "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "note":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "encoded":[Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    :cond_223
    sget-object v2, Lic/buzzebeeslib/util/zxing/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v18

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_19f

    .line 274
    .restart local v6    # "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_232
    sget-object v2, Lic/buzzebeeslib/util/zxing/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v18

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1b0

    .line 277
    .restart local v17    # "url":Ljava/lang/String;
    :cond_241
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_1c0

    .line 280
    .restart local v7    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v8    # "note":Ljava/lang/String;
    :cond_247
    new-instance v1, Lic/buzzebeeslib/util/zxing/MECARDContactEncoder;

    invoke-direct {v1}, Lic/buzzebeeslib/util/zxing/MECARDContactEncoder;-><init>()V

    goto :goto_1d1

    .line 297
    .end local v3    # "organization":Ljava/lang/String;
    .end local v5    # "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v6    # "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "note":Ljava/lang/String;
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "x":I
    :cond_24d
    const-string v2, "LOCATION_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 298
    const-string v2, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 299
    .restart local v10    # "bundle":Landroid/os/Bundle;
    if-eqz v10, :cond_30

    .line 301
    const-string v2, "LAT"

    const v4, 0x7f7fffff

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v14

    .line 302
    .local v14, "latitude":F
    const-string v2, "LONG"

    const v4, 0x7f7fffff

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v15

    .line 303
    .local v15, "longitude":F
    const v2, 0x7f7fffff

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_30

    const v2, 0x7f7fffff

    cmpl-float v2, v15, v2

    if-eqz v2, :cond_30

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "geo:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 308
    :try_start_2b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v4, Lic/buzzebeeslib/R$string;->contents_location:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_2b9 .. :try_end_2c7} :catch_2c9

    goto/16 :goto_30

    .line 309
    :catch_2c9
    move-exception v12

    .line 310
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v19, "encodeQRCodeContents|Exception := "

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30
.end method

.method private encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V
    .registers 13
    .param p1, "contact"    # Lcom/google/zxing/client/result/AddressBookParsedResult;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 319
    iget-boolean v1, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->useVCard:Z

    if-eqz v1, :cond_50

    new-instance v0, Lic/buzzebeeslib/util/zxing/VCardContactEncoder;

    invoke-direct {v0}, Lic/buzzebeeslib/util/zxing/VCardContactEncoder;-><init>()V

    .line 320
    .local v0, "encoder":Lic/buzzebeeslib/util/zxing/ContactEncoder;
    :goto_b
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lic/buzzebeeslib/util/zxing/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 322
    .local v9, "encoded":[Ljava/lang/String;
    aget-object v1, v9, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 323
    const/4 v1, 0x0

    aget-object v1, v9, v1

    iput-object v1, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 324
    aget-object v1, v9, v10

    iput-object v1, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 327
    :try_start_45
    iget-object v1, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget v2, Lic/buzzebeeslib/R$string;->contents_contact:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4f} :catch_56

    .line 333
    :cond_4f
    :goto_4f
    return-void

    .line 319
    .end local v0    # "encoder":Lic/buzzebeeslib/util/zxing/ContactEncoder;
    .end local v9    # "encoded":[Ljava/lang/String;
    :cond_50
    new-instance v0, Lic/buzzebeeslib/util/zxing/MECARDContactEncoder;

    invoke-direct {v0}, Lic/buzzebeeslib/util/zxing/MECARDContactEncoder;-><init>()V

    goto :goto_b

    .line 328
    .restart local v0    # "encoder":Lic/buzzebeeslib/util/zxing/ContactEncoder;
    .restart local v9    # "encoded":[Ljava/lang/String;
    :catch_56
    move-exception v8

    .line 329
    .local v8, "e":Ljava/lang/Exception;
    sget-object v1, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encodeQRCodeContents|Exception := "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 379
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 375
    :cond_9
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_14

    .line 376
    const-string v1, "UTF-8"

    goto :goto_8

    .line 374
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static toIterable([Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 2
    .param p0, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public encodeAsBitmap()Landroid/graphics/Bitmap;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 341
    .local v2, "contentsToEncode":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 342
    const/4 v7, 0x0

    .line 369
    :goto_7
    return-object v7

    .line 344
    :cond_8
    const/4 v6, 0x0

    .line 345
    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    invoke-static {v2}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 346
    .local v15, "encoding":Ljava/lang/String;
    if-eqz v15, :cond_1b

    .line 347
    new-instance v6, Ljava/util/EnumMap;

    .end local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    const-class v1, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 348
    .restart local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v6, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p0

    iget v4, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->dimension:I

    move-object/from16 v0, p0

    iget v5, v0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->dimension:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_2f} :catch_50

    move-result-object v18

    .line 357
    .local v18, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 358
    .local v10, "width":I
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 359
    .local v14, "height":I
    mul-int v1, v10, v14

    new-array v8, v1, [I

    .line 360
    .local v8, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_3e
    move/from16 v0, v20

    if-lt v0, v14, :cond_53

    .line 367
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 368
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_7

    .line 353
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "pixels":[I
    .end local v10    # "width":I
    .end local v14    # "height":I
    .end local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v20    # "y":I
    :catch_50
    move-exception v16

    .line 355
    .local v16, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_7

    .line 361
    .end local v16    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "pixels":[I
    .restart local v10    # "width":I
    .restart local v14    # "height":I
    .restart local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .restart local v20    # "y":I
    :cond_53
    mul-int v17, v20, v10

    .line 362
    .local v17, "offset":I
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_57
    move/from16 v0, v19

    if-lt v0, v10, :cond_5e

    .line 360
    add-int/lit8 v20, v20, 0x1

    goto :goto_3e

    .line 363
    :cond_5e
    add-int v3, v17, v19

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/high16 v1, -0x1000000

    :goto_68
    aput v1, v8, v3

    .line 362
    add-int/lit8 v19, v19, 0x1

    goto :goto_57

    .line 363
    :cond_6d
    const/4 v1, -0x1

    goto :goto_68
.end method

.method getContents()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->contents:Ljava/lang/String;

    return-object v0
.end method

.method getDisplayContents()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->displayContents:Ljava/lang/String;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->title:Ljava/lang/String;

    return-object v0
.end method

.method isUseVCard()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->useVCard:Z

    return v0
.end method
